.class final Lcom/miui/gamebooster/guide/CasualModeGuide$h;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/guide/CasualModeGuide;->H(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$h;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/guide/CasualModeGuide$h;->invoke()V

    sget-object v0, Loj/t;->a:Loj/t;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$h;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->e()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->m(Landroid/view/WindowManager;)V

    return-void
.end method
