.class public Lqd/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Lme/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pc_sp_data_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lqd/e;->a:Landroid/content/SharedPreferences;

    new-instance v0, Lme/z;

    const-string v1, "layout_data"

    invoke-direct {v0, p1, v1}, Lme/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lqd/e;->b:Lme/z;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lqd/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "init_success"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqd/e;->b:Lme/z;

    invoke-virtual {v0}, Lme/z;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lqd/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "init_success"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lqd/e;->b:Lme/z;

    invoke-virtual {v0, p1}, Lme/z;->c(Ljava/lang/String;)Z

    return-void
.end method
