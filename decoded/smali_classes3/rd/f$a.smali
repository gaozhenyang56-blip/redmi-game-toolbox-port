.class Lrd/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrd/f;->d(Landroid/content/Context;Landroid/view/View;Lrd/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lrd/f;


# direct methods
.method constructor <init>(Lrd/f;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lrd/f$a;->b:Lrd/f;

    iput-object p2, p0, Lrd/f$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lrd/f$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lme/t;->L(I)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/miui/powercenter/PowerCenter;->p:Z

    const-string p1, "dark_mode"

    invoke-static {p1}, Lhd/a;->O0(Ljava/lang/String;)V

    return-void
.end method
