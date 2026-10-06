.class Lzi/i;
.super Lzi/h$b;
.source "SourceFile"


# instance fields
.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lzi/h;


# direct methods
.method constructor <init>(Lzi/h;Lzi/h$a;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzi/i;->d:Lzi/h;

    iput-boolean p3, p0, Lzi/i;->b:Z

    iput-object p4, p0, Lzi/i;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Lzi/h$b;-><init>(Lzi/h$a;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    invoke-super {p0}, Lzi/h$b;->a()V

    return-void
.end method

.method b()V
    .locals 4

    iget-boolean v0, p0, Lzi/i;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lzi/i;->d:Lzi/h;

    invoke-static {v0}, Lzi/h;->a(Lzi/h;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lzi/i;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
