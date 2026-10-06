.class Lcom/miui/powercenter/autotask/l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/autotask/OperationEditFragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/miui/powercenter/autotask/l;


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/autotask/l;Lcom/miui/powercenter/autotask/OperationEditFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l$d;->b:Lcom/miui/powercenter/autotask/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/autotask/l;Lcom/miui/powercenter/autotask/OperationEditFragment;Lcom/miui/powercenter/autotask/l$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/autotask/l$d;-><init>(Lcom/miui/powercenter/autotask/l;Lcom/miui/powercenter/autotask/OperationEditFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/l$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/OperationEditFragment;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/autotask/n;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/l$d;->b:Lcom/miui/powercenter/autotask/l;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/miui/powercenter/autotask/l;->f(Lcom/miui/powercenter/autotask/l;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "auto_clean_memory"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l$d;->b:Lcom/miui/powercenter/autotask/l;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/powercenter/autotask/l;->g(Lcom/miui/powercenter/autotask/l;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v1, "brightness"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l$d;->b:Lcom/miui/powercenter/autotask/l;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/powercenter/autotask/l;->h(Lcom/miui/powercenter/autotask/l;Landroid/content/Context;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
