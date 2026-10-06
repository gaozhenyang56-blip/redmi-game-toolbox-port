.class public Lab/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lab/g;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lab/b;
    .locals 2

    iget-object v0, p0, Lab/g;->a:Ljava/lang/Object;

    const-string v1, "getDisk"

    invoke-static {v0, v1}, Lab/e;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lab/b;

    invoke-direct {v1, v0}, Lab/b;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lab/g;->a:Ljava/lang/Object;

    const-string v1, "getDiskId"

    invoke-static {v0, v1}, Lab/e;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lab/g;->a:Ljava/lang/Object;

    const-string v1, "getId"

    invoke-static {v0, v1}, Lab/e;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public d()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lab/g;->a:Ljava/lang/Object;

    const-string v1, "getPath"

    invoke-static {v0, v1}, Lab/e;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/io/File;

    :goto_0
    return-object v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lab/g;->a:Ljava/lang/Object;

    const-string v1, "getState"

    invoke-static {v0, v1}, Lab/e;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lab/g;->a:Ljava/lang/Object;

    const-string v1, "getType"

    invoke-static {v0, v1}, Lab/e;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lab/g;->a:Ljava/lang/Object;

    const-string v1, "isMountedReadable"

    invoke-static {v0, v1}, Lab/e;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
