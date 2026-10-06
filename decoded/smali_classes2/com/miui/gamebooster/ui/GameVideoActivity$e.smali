.class Lcom/miui/gamebooster/ui/GameVideoActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/GameVideoActivity;->o0(Landroid/view/View;Lcom/miui/gamebooster/model/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/miui/gamebooster/model/y;

.field final synthetic c:Lcom/miui/gamebooster/ui/GameVideoActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameVideoActivity;Landroid/widget/ImageView;Lcom/miui/gamebooster/model/y;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$e;->c:Lcom/miui/gamebooster/ui/GameVideoActivity;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$e;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$e;->b:Lcom/miui/gamebooster/model/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$e;->c:Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameVideoActivity;->j0(Lcom/miui/gamebooster/ui/GameVideoActivity;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/utils/a;->w0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$e;->c:Lcom/miui/gamebooster/ui/GameVideoActivity;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$e;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$e;->b:Lcom/miui/gamebooster/model/y;

    invoke-static {p1, v0, v1}, Lcom/miui/gamebooster/ui/GameVideoActivity;->l0(Lcom/miui/gamebooster/ui/GameVideoActivity;Landroid/widget/ImageView;Lcom/miui/gamebooster/model/y;)V

    return-void
.end method
