.class Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$b;->a:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p2, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$b;->a:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu7/a;

    invoke-virtual {p1}, Lu7/a;->i()Z

    move-result p2

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lu7/a;->n(Z)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$b;->a:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->d0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$b;->a:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->d0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$b;->a:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->g0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V

    return-void
.end method
