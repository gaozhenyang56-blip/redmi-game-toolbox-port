.class public Lcom/miui/simlock/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/simlock/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/simlock/a$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/simlock/a$c;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/simlock/a$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/simlock/a$c;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/miui/simlock/a$c;->e:Z

    iput-boolean p6, p0, Lcom/miui/simlock/a$c;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/simlock/a$c;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/simlock/a$c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/simlock/a$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/simlock/a$c;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/simlock/a$c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/simlock/a$c;->g()Z

    move-result v1

    iget-boolean v2, p0, Lcom/miui/simlock/a$c;->e:Z

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/simlock/a$c;->f()Z

    move-result v1

    iget-boolean v2, p0, Lcom/miui/simlock/a$c;->f:Z

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/simlock/a$c;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/simlock/a$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/simlock/a$c;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/simlock/a$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EncryptionUtils::equals::error , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SimLock"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/simlock/a$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/simlock/a$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/simlock/a$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/simlock/a$c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/simlock/a$c;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/simlock/a$c;->e:Z

    return v0
.end method
