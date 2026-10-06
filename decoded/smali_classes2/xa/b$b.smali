.class Lxa/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxa/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxa/b;->g(Ljava/io/File;Ljava/util/List;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lxa/b;


# direct methods
.method constructor <init>(Lxa/b;Ljava/util/List;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lxa/b$b;->d:Lxa/b;

    iput-object p2, p0, Lxa/b$b;->b:Ljava/util/List;

    iput-object p3, p0, Lxa/b$b;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    :goto_0
    iput p1, p0, Lxa/b$b;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lxa/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/io/File;)Z
    .locals 9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxa/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lxa/b$b;->d:Lxa/b;

    invoke-static {v1}, Lxa/b;->a(Lxa/b;)J

    iget-object v1, p0, Lxa/b$b;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v8, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    iget-object v2, p0, Lxa/b$b;->d:Lxa/b;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget v7, p0, Lxa/b$b;->a:I

    invoke-static {v2, p1, v7}, Lxa/b;->b(Lxa/b;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return v0
.end method
