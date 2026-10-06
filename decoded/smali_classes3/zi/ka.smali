.class Lzi/ka;
.super Lzi/ja;
.source "SourceFile"


# instance fields
.field final synthetic d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p3, p0, Lzi/ka;->d:Ljava/lang/Runnable;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lzi/ja;-><init>(Landroid/content/Context;Ljava/io/File;Lzi/ka;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lzi/ka;->d:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
