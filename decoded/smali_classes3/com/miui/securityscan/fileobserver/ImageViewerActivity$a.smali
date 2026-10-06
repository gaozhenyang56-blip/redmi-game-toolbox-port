.class Lcom/miui/securityscan/fileobserver/ImageViewerActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/fileobserver/ImageViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/fileobserver/ImageViewerActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/fileobserver/ImageViewerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity$a;->a:Lcom/miui/securityscan/fileobserver/ImageViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity$a;->a:Lcom/miui/securityscan/fileobserver/ImageViewerActivity;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity$a;->a:Lcom/miui/securityscan/fileobserver/ImageViewerActivity;

    invoke-static {v2}, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->f0(Lcom/miui/securityscan/fileobserver/ImageViewerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->g0(Lcom/miui/securityscan/fileobserver/ImageViewerActivity;Ljava/io/File;)V

    return-void
.end method
