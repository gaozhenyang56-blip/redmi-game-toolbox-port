.class Le3/b$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Le3/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, Le3/b$a;->b:Ljava/lang/String;

    iput-object p3, p0, Le3/b$a;->c:Ljava/lang/String;

    iput-boolean p4, p0, Le3/b$a;->d:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object p1, p0, Le3/b$a;->a:Landroid/content/Context;

    iget-object v0, p0, Le3/b$a;->b:Ljava/lang/String;

    iget-object v1, p0, Le3/b$a;->c:Ljava/lang/String;

    iget-boolean v2, p0, Le3/b$a;->d:Z

    invoke-static {p1, v0, v1, v2}, Le3/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Le3/b$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
