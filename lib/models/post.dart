class PostModel {
    String id;
    final String title;
    final String description;
    final String imageUrl;

    PostModel ({
        this.id = "",
        required this.title,
        required this.description,
        required this.imageUrl,
    });

    Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'imageUrl': imageUrl,
    };
}

