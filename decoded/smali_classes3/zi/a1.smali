.class public Lzi/a1;
.super Lzi/h$a;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lzi/h$a;-><init>()V

    iput-object p1, p0, Lzi/a1;->a:Landroid/content/Context;

    return-void
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lzi/a1;->a:Landroid/content/Context;

    invoke-static {v0}, Lri/b;->f(Landroid/content/Context;)Lri/b;

    move-result-object v0

    invoke-virtual {v0}, Lri/b;->d()Lqi/a;

    move-result-object v0

    invoke-virtual {v0}, Lqi/a;->h()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "100887"

    return-object v0
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lzi/a1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzi/a1;->a:Landroid/content/Context;

    invoke-static {v0}, Lri/b;->f(Landroid/content/Context;)Lri/b;

    move-result-object v0

    invoke-virtual {v0}, Lri/b;->w()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lzi/a1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " perf begin upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->B(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to send perf data. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
