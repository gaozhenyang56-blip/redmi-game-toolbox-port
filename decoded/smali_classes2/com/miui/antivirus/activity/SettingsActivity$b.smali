.class Lcom/miui/antivirus/activity/SettingsActivity$b;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Landroid/util/Pair;",
        ">;"
    }
.end annotation


# instance fields
.field private q:Landroid/content/Context;

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p2}, Lw4/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$b;->q:Landroid/content/Context;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$b;->r:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity$b;->J()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public J()Landroid/util/Pair;
    .locals 5

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$b;->q:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/d;->d(Landroid/content/Context;)Lcom/miui/antivirus/whitelist/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antivirus/whitelist/d;->g()I

    move-result v0

    iget-object v3, p0, Lcom/miui/antivirus/activity/SettingsActivity$b;->q:Landroid/content/Context;

    invoke-static {v3}, Lw2/t;->v(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lo2/h;->W(Z)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$b;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->s0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lo2/b;

    move-result-object v1

    invoke-virtual {v1}, Lo2/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->u0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lo2/h;->w()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->v0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z

    invoke-static {}, Lo2/h;->r()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->w0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z

    invoke-static {}, Lo2/h;->u()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->e0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z

    invoke-static {}, Lo2/h;->y()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->f0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z

    invoke-static {}, Lo2/h;->t()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->g0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z

    invoke-static {}, Lo2/h;->v()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->h0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z

    :cond_2
    if-nez v4, :cond_3

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-object v4
.end method
