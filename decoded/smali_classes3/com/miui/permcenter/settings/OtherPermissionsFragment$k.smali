.class public final Lcom/miui/permcenter/settings/OtherPermissionsFragment$k;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/settings/OtherPermissionsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Landroidx/lifecycle/u0$b;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFragmentViewModelLazy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt$viewModels$3\n*L\n1#1,105:1\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lak/a;

.field final synthetic b:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lak/a;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$k;->a:Lak/a;

    iput-object p2, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$k;->b:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/u0$b;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$k;->a:Lak/a;

    invoke-interface {v0}, Lak/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/lifecycle/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/lifecycle/k;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroidx/lifecycle/k;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/u0$b;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$k;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/u0$b;

    move-result-object v2

    :cond_2
    const-string v0, "(ownerProducer() as? Has\u2026tViewModelProviderFactory"

    invoke-static {v2, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$k;->invoke()Landroidx/lifecycle/u0$b;

    move-result-object v0

    return-object v0
.end method
