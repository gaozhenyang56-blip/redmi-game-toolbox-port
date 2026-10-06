.class Ljg/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/e$a;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljg/e$a;


# direct methods
.method constructor <init>(Ljg/e$a;)V
    .locals 0

    iput-object p1, p0, Ljg/e$a$a;->a:Ljg/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljg/e$a$a;->a:Ljg/e$a;

    iget-object v0, v0, Ljg/e$a;->a:Ljg/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljg/e;->g(Ljg/e;Z)Z

    iget-object v0, p0, Ljg/e$a$a;->a:Ljg/e$a;

    iget-object v0, v0, Ljg/e$a;->a:Ljg/e;

    invoke-static {v0}, Ljg/e;->n(Ljg/e;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_key_superpower_user_leavesuperpower"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Ljg/e$a$a;->a:Ljg/e$a;

    iget-object v0, v0, Ljg/e$a;->a:Ljg/e;

    invoke-static {v0}, Ljg/e;->o(Ljg/e;)I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Ljg/e$a$a;->a:Ljg/e$a;

    iget-object v0, v0, Ljg/e$a;->a:Ljg/e;

    invoke-static {v0}, Ljg/e;->p(Ljg/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljg/e$a$a;->a:Ljg/e$a;

    iget-object v0, v0, Ljg/e$a;->a:Ljg/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljg/e;->W(ZZ)V

    :cond_0
    return-void
.end method
