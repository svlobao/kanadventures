class Task:
    def __init__(self, id, topic, subtopic, title, createdDate, dueDate, content) -> None:
        self.id = id
        self.topic = topic
        self.subtopic = subtopic
        self.title = title
        self.createdDate = createdDate
        self.dueDate = dueDate
        self.content = content