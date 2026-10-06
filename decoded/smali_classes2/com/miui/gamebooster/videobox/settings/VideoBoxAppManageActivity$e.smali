.class Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu4/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->x0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$e;->b:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    iput-object p2, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$e;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$e;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc3/o;

    invoke-virtual {p1}, Lc3/o;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$e;->b:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e019a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b04e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$e;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc3/o;

    invoke-virtual {p1}, Lc3/o;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method
