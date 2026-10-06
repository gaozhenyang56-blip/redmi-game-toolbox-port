.class Lcom/miui/gamebooster/ui/GameVideoActivity$d;
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
.field final synthetic a:Lcom/miui/gamebooster/model/y;

.field final synthetic b:Lcom/miui/gamebooster/ui/GameVideoActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameVideoActivity;Lcom/miui/gamebooster/model/y;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$d;->b:Lcom/miui/gamebooster/ui/GameVideoActivity;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$d;->a:Lcom/miui/gamebooster/model/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$d;->b:Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameVideoActivity;->j0(Lcom/miui/gamebooster/ui/GameVideoActivity;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/utils/a;->i0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$d;->b:Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameVideoActivity;->g0(Lcom/miui/gamebooster/ui/GameVideoActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$d;->a:Lcom/miui/gamebooster/model/y;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/y;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$d;->b:Lcom/miui/gamebooster/ui/GameVideoActivity;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$d;->a:Lcom/miui/gamebooster/model/y;

    invoke-static {v2, v3}, Lcom/miui/gamebooster/ui/GameVideoActivity;->k0(Lcom/miui/gamebooster/ui/GameVideoActivity;Lcom/miui/gamebooster/model/y;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$d;->a:Lcom/miui/gamebooster/model/y;

    invoke-static {v3}, La8/i2;->d(Lcom/miui/gamebooster/model/y;)Z

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Leg/i;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
