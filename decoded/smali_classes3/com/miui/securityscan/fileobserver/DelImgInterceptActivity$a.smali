.class Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvf/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvf/b<",
        "Ljava/util/List<",
        "Lvf/k;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$a;->a:Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvf/k;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$a;->a:Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    invoke-static {v0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->k0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;)V

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$a;->a:Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    invoke-static {v0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->l0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;Ljava/util/List;)V

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$a;->a:Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    invoke-static {p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->k0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$a;->a:Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    invoke-static {p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->m0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$a;->a:Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    invoke-static {}, Lgh/b;->f()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$a;->a:Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$a;->a(Ljava/util/List;)V

    return-void
.end method
