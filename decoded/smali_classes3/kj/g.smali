.class public Lkj/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "kj.g"


# instance fields
.field private a:Llj/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkj/g;->a:Llj/a;

    invoke-virtual {v0, p1}, Llj/a;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lkj/g;->a:Llj/a;

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lkj/g;->a:Llj/a;

    invoke-virtual {v0, p1}, Llj/a;->f(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Llj/a;

    invoke-direct {v0}, Llj/a;-><init>()V

    iput-object v0, p0, Lkj/g;->a:Llj/a;

    :try_start_0
    const-string v0, "dict"

    invoke-static {p1, v0}, Lkj/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    iget-object v0, p0, Lkj/g;->a:Llj/a;

    invoke-virtual {v0, p1}, Llj/a;->h(Ljava/io/InputStream;)Z

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lkj/g;->b:Ljava/lang/String;

    const-string v0, "init failed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
