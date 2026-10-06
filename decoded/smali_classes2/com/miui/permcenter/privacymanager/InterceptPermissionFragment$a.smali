.class Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$a;->a:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$a;->a:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    invoke-static {p1, p2}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->j0(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;Z)Z

    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$a;->a:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    invoke-static {p1}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->k0(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$a;->a:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    iget-object p1, p1, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
