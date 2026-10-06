.class Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->A0(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$e;->b:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$e;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/gamebooster/model/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/a;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$e;->b:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/b;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$e;->a:Landroid/app/Activity;

    invoke-static {v0, p1, v1}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->m0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;Lcom/miui/gamebooster/model/b;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
