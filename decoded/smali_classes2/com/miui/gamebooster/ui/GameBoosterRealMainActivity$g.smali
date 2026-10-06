.class Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->y0(Lcom/miui/gamebooster/model/b;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/model/b;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;Lcom/miui/gamebooster/model/b;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$g;->c:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$g;->a:Lcom/miui/gamebooster/model/b;

    iput-object p3, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$g;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$g;->a:Lcom/miui/gamebooster/model/b;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$g;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.miui.securitycenter"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gamebooster/model/b;->c(Landroid/content/Context;Ljava/lang/String;ZIZ)V

    return-void
.end method
