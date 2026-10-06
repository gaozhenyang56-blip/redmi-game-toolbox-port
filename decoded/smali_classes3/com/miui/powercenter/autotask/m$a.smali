.class Lcom/miui/powercenter/autotask/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/autotask/m;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/m;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m$a;->a:Lcom/miui/powercenter/autotask/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "brightness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m$a;->a:Lcom/miui/powercenter/autotask/m;

    iget-object v0, p1, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/powercenter/autotask/m;->e(Lcom/miui/powercenter/autotask/m;Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
