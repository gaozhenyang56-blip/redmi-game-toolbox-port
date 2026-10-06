.class public Lcom/miui/antivirus/whitelist/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lx2/c;

.field private b:Lo2/b$c;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/miui/antivirus/whitelist/d$b;)Lcom/miui/antivirus/whitelist/c;
    .locals 3

    new-instance v0, Lcom/miui/antivirus/whitelist/c;

    invoke-direct {v0}, Lcom/miui/antivirus/whitelist/c;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$b;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$b;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->e:Ljava/lang/String;

    sget-object v1, Lx2/c;->a:Lx2/c;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->a:Lx2/c;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$b;->a:Ljava/lang/String;

    const-string v2, "INSTALLED_APP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lo2/b$c;->a:Lo2/b$c;

    goto :goto_0

    :cond_0
    sget-object v1, Lo2/b$c;->b:Lo2/b$c;

    :goto_0
    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->b:Lo2/b$c;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$b;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/antivirus/whitelist/d$b;->h:Ljava/lang/String;

    iput-object p0, v0, Lcom/miui/antivirus/whitelist/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lcom/miui/antivirus/whitelist/d$c;)Lcom/miui/antivirus/whitelist/c;
    .locals 2

    new-instance v0, Lcom/miui/antivirus/whitelist/c;

    invoke-direct {v0}, Lcom/miui/antivirus/whitelist/c;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$c;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$c;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$c;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->e:Ljava/lang/String;

    sget-object v1, Lx2/c;->b:Lx2/c;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->a:Lx2/c;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$c;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$c;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$c;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/c;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/antivirus/whitelist/d$c;->a:Ljava/lang/String;

    const-string v1, "INSTALLED_APP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lo2/b$c;->a:Lo2/b$c;

    goto :goto_0

    :cond_0
    sget-object p0, Lo2/b$c;->b:Lo2/b$c;

    :goto_0
    iput-object p0, v0, Lcom/miui/antivirus/whitelist/c;->b:Lo2/b$c;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lo2/b$c;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/c;->b:Lo2/b$c;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/whitelist/c;->i:Z

    return v0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/whitelist/c;->i:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WhiteListType mWhiteListType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/c;->a:Lx2/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mTitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDirPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/antivirus/whitelist/c;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
