.class Ll2/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll2/h;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/db/vo/ProvinceVo;

.field final synthetic b:Ll2/h;


# direct methods
.method constructor <init>(Ll2/h;Lcom/miui/antispam/db/vo/ProvinceVo;)V
    .locals 0

    iput-object p1, p0, Ll2/h$a;->b:Ll2/h;

    iput-object p2, p0, Ll2/h$a;->a:Lcom/miui/antispam/db/vo/ProvinceVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ll2/h$a;->b:Ll2/h;

    invoke-static {v0}, Ll2/h;->a(Ll2/h;)Ll2/h$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll2/h$a;->b:Ll2/h;

    invoke-static {v0}, Ll2/h;->a(Ll2/h;)Ll2/h$d;

    move-result-object v0

    iget-object v1, p0, Ll2/h$a;->a:Lcom/miui/antispam/db/vo/ProvinceVo;

    invoke-interface {v0, p1, v1}, Ll2/h$d;->a(Landroid/view/View;Lcom/miui/antispam/db/vo/ProvinceVo;)V

    :cond_0
    return-void
.end method
