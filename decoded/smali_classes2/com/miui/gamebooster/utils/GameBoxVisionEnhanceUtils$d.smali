.class Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$d;->a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$d;->a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->j(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)V

    const-string v0, "GameBoxVisionEnhanceUtils"

    const-string v1, "executeReleaseVisionEnhance done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
