.class public final Lcom/miui/permcenter/settings/OtherPermissionsFragment$j;
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
        "Landroidx/lifecycle/x0;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFragmentViewModelLazy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt$viewModels$2\n*L\n1#1,105:1\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lak/a;


# direct methods
.method public constructor <init>(Lak/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$j;->a:Lak/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/x0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$j;->a:Lak/a;

    invoke-interface {v0}, Lak/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/y0;

    invoke-interface {v0}, Landroidx/lifecycle/y0;->getViewModelStore()Landroidx/lifecycle/x0;

    move-result-object v0

    const-string v1, "ownerProducer().viewModelStore"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$j;->invoke()Landroidx/lifecycle/x0;

    move-result-object v0

    return-object v0
.end method
