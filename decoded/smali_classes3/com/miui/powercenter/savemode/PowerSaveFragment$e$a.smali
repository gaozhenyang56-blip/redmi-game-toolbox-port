.class Lcom/miui/powercenter/savemode/PowerSaveFragment$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/savemode/PowerSaveFragment$e;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

.field final synthetic b:Z

.field final synthetic c:Lcom/miui/powercenter/savemode/PowerSaveFragment$e;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/savemode/PowerSaveFragment$e;Lcom/miui/powercenter/savemode/PowerSaveFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$a;->c:Lcom/miui/powercenter/savemode/PowerSaveFragment$e;

    iput-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$a;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    iput-boolean p3, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$a;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$a;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$a;->b:Z

    invoke-static {v0, v1}, Lme/w;->C0(Landroid/content/Context;Z)V

    iget-boolean v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$a;->b:Z

    const-string v1, "Setting"

    invoke-static {v0, v1}, Lhd/a;->b1(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
