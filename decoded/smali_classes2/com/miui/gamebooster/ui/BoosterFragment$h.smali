.class Lcom/miui/gamebooster/ui/BoosterFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->a2(ILcom/miui/gamebooster/model/c0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/BoosterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->E1()V

    const-string p1, "click"

    const-string p2, "renew_now"

    invoke-static {p1, p2}, Lcom/miui/gamebooster/utils/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
