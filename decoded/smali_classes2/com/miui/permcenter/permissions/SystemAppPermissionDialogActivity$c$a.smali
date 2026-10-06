.class Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyh/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$a;->a:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lsh/b;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lsh/b;->a()Ljava/lang/Throwable;

    move-result-object p1

    const-string p2, "CardGroupAdapter"

    const-string p3, "load app icon failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method
