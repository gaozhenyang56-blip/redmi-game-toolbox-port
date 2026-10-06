.class Lcom/miui/gamebooster/ui/GameVideoActivity$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/GameVideoActivity$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/GameVideoActivity$f;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameVideoActivity$f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$f$a;->a:Lcom/miui/gamebooster/ui/GameVideoActivity$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$f$a;->a:Lcom/miui/gamebooster/ui/GameVideoActivity$f;

    iget-object v1, v0, Lcom/miui/gamebooster/ui/GameVideoActivity$f;->c:Lcom/miui/gamebooster/ui/GameVideoActivity;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameVideoActivity$f;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/gamebooster/ui/GameVideoActivity;->m0(Lcom/miui/gamebooster/ui/GameVideoActivity;Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$f$a;->a:Lcom/miui/gamebooster/ui/GameVideoActivity$f;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameVideoActivity$f;->c:Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$f$a;->a:Lcom/miui/gamebooster/ui/GameVideoActivity$f;

    iget-object v1, v1, Lcom/miui/gamebooster/ui/GameVideoActivity$f;->c:Lcom/miui/gamebooster/ui/GameVideoActivity;

    const v2, 0x7f120a65

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lr8/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
