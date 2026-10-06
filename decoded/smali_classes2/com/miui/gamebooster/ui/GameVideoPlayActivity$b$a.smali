.class Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b$a;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b$a;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b$a;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b;->c:Lcom/miui/gamebooster/ui/GameVideoPlayActivity;

    const v1, 0x7f120b22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
