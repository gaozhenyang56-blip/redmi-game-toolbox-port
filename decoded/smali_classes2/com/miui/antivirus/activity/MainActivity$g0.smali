.class Lcom/miui/antivirus/activity/MainActivity$g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo2/g$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g0"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$g0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->A0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$c0;

    move-result-object v0

    const/16 v1, 0x40e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lw4/e;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/miui/antivirus/model/j$a;Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->A0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$c0;

    move-result-object v0

    const/16 v1, 0x40a

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, p2, p1}, Lr2/a;->a(ILcom/miui/antivirus/model/d;ZLcom/miui/antivirus/model/j$a;)Lr2/a;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lw4/e;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->A0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$c0;

    move-result-object v0

    const/16 v1, 0x416

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lw4/e;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->A0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$c0;

    move-result-object v0

    const/16 v1, 0x408

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lw4/e;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetVirusTaskId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AntiVirusMainActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/miui/antivirus/activity/MainActivity;->p0(Lcom/miui/antivirus/activity/MainActivity;I)I

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->p0(Lcom/miui/antivirus/activity/MainActivity;I)I

    :cond_0
    return-void
.end method

.method public g(Lcom/miui/antivirus/model/d;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->A0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$c0;

    move-result-object v0

    const/16 v1, 0x40a

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Lr2/a;->a(ILcom/miui/antivirus/model/d;ZLcom/miui/antivirus/model/j$a;)Lr2/a;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lw4/e;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->A0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$c0;

    move-result-object v0

    const/16 v1, 0x40b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lw4/e;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->A0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$c0;

    move-result-object v0

    const/16 v1, 0x415

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lw4/e;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->q0(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j(Lcom/miui/antivirus/model/a$a;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->A0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$c0;

    move-result-object v0

    const/16 v1, 0x409

    invoke-virtual {v0, v1, p1}, Lw4/e;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public k(Lcom/miui/antivirus/model/d;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->A0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$c0;

    move-result-object v0

    const/16 v1, 0x40a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, p1, v3, v2}, Lr2/a;->a(ILcom/miui/antivirus/model/d;ZLcom/miui/antivirus/model/j$a;)Lr2/a;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lw4/e;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
