.class Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$b;->a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "GameBoxVisionEnhanceUtils"

    const-string v0, "on Game PkgName Change.."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$b$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$b$a;-><init>(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$b;)V

    invoke-virtual {p1, v0}, Lef/z;->c(Ljava/lang/Runnable;)V

    return-void
.end method
