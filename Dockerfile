FROM eclipse-temurin:17-jdk-alpine             # JDK 17 포함된 가벼운 베이스 이미지
WORKDIR /app                                   # 컨테이너 내 작업 디렉토리 설정
COPY build/libs/*.jar app.jar                  # 빌드된 JAR 복사
ENTRYPOINT ["java", "-jar", "app.jar"]         # 애플리케이션 실행 명령