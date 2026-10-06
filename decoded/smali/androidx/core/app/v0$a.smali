.class Landroidx/core/app/v0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x16
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/os/PersistableBundle;)Landroidx/core/app/v0;
    .locals 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    new-instance v0, Landroidx/core/app/v0$c;

    invoke-direct {v0}, Landroidx/core/app/v0$c;-><init>()V

    const-string v1, "name"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v0$c;->f(Ljava/lang/CharSequence;)Landroidx/core/app/v0$c;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v0$c;->g(Ljava/lang/String;)Landroidx/core/app/v0$c;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v0$c;->e(Ljava/lang/String;)Landroidx/core/app/v0$c;

    move-result-object v0

    const-string v1, "isBot"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v0$c;->b(Z)Landroidx/core/app/v0$c;

    move-result-object v0

    const-string v1, "isImportant"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/v0$c;->d(Z)Landroidx/core/app/v0$c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/v0$c;->a()Landroidx/core/app/v0;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroidx/core/app/v0;)Landroid/os/PersistableBundle;
    .locals 3
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v1, p0, Landroidx/core/app/v0;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/core/app/v0;->c:Ljava/lang/String;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/core/app/v0;->d:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/core/app/v0;->e:Z

    const-string v2, "isBot"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p0, p0, Landroidx/core/app/v0;->f:Z

    const-string v1, "isImportant"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
