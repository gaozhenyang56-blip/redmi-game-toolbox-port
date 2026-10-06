.class Lcom/miui/gamebooster/ui/BoosterFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->B1(Ln6/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ln6/g;

.field final synthetic b:Lcom/miui/gamebooster/ui/BoosterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;Ln6/g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$e;->b:Lcom/miui/gamebooster/ui/BoosterFragment;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$e;->a:Ln6/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    invoke-static {p1}, Lef/x;->R(Z)V

    sget-object p2, Lcom/miui/gamebooster/ui/BoosterFragment$u;->b:[I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$e;->a:Ln6/g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$e;->b:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->K1()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$e;->b:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->r2()V

    :goto_0
    return-void
.end method
