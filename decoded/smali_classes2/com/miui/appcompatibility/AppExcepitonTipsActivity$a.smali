.class Lcom/miui/appcompatibility/AppExcepitonTipsActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->e0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$a;->a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$a;->a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    const-string p1, "module_click"

    const-string p2, "continue"

    invoke-static {p1, p2}, Ly2/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$a;->a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
