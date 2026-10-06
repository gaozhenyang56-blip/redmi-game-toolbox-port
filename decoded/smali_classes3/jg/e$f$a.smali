.class Ljg/e$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/e$f;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljg/e$f;


# direct methods
.method constructor <init>(Ljg/e$f;)V
    .locals 0

    iput-object p1, p0, Ljg/e$f$a;->a:Ljg/e$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljg/e$f$a;->a:Ljg/e$f;

    iget-object v0, v0, Ljg/e$f;->a:Ljg/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljg/e;->s(Ljg/e;Z)Z

    iget-object v0, p0, Ljg/e$f$a;->a:Ljg/e$f;

    iget-object v0, v0, Ljg/e$f;->a:Ljg/e;

    invoke-static {v0}, Ljg/e;->n(Ljg/e;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_key_superpower_user_entersuperpower"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
