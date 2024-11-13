package com.example.jaxwsxsl.endpoint;

import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlRootElement;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;
import java.util.List;

@Endpoint
public class StudentEndpoint {

    private static final String NAMESPACE_URI = "http://example.com/students";

    @PayloadRoot(namespace = NAMESPACE_URI, localPart = "StudentRequest")
    @ResponsePayload
    public StudentResponse getStudent(@RequestPayload StudentRequest request) {
        StudentResponse response = new StudentResponse();
        response.setName("John Doe");
        response.setAge(22);
        response.setSubjects(List.of("Mathematics", "Science"));
        return response;
    }

    @XmlRootElement(namespace = NAMESPACE_URI)
    public static class StudentRequest {
        private String studentId;

        @XmlElement(namespace = NAMESPACE_URI)
        public String getStudentId() {
            return studentId;
        }

        public void setStudentId(String studentId) {
            this.studentId = studentId;
        }
    }

    @XmlRootElement(namespace = NAMESPACE_URI)
    public static class StudentResponse {
        private String name;
        private int age;
        private List<String> subjects;

        @XmlElement(namespace = NAMESPACE_URI)
        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        @XmlElement(namespace = NAMESPACE_URI)
        public int getAge() {
            return age;
        }

        public void setAge(int age) {
            this.age = age;
        }

        @XmlElement(namespace = NAMESPACE_URI)
        public List<String> getSubjects() {
            return subjects;
        }

        public void setSubjects(List<String> subjects) {
            this.subjects = subjects;
        }
    }
}
