.class Lwe/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwe/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwe/c;


# direct methods
.method constructor <init>(Lwe/c;)V
    .locals 0

    iput-object p1, p0, Lwe/c$b;->a:Lwe/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "AuthManager"

    const-string v1, "onLogout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lwe/c$b;->a:Lwe/c;

    invoke-static {v0}, Lwe/c;->g(Lwe/c;)V

    const-string v0, ""

    invoke-static {v0}, Lwe/a;->b(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lwe/a;->c(J)V

    return-void
.end method

.method public b(Landroid/accounts/Account;)V
    .locals 1

    const-string p1, "AuthManager"

    const-string v0, "onLogin"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v0, Lwe/c$b$a;

    invoke-direct {v0, p0}, Lwe/c$b$a;-><init>(Lwe/c$b;)V

    invoke-virtual {p1, v0}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method
