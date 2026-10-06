.class public final Lcom/miui/gamebooster/guide/CasualModeGuide$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/guide/CasualModeGuide;->y(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Handler.kt\nandroidx/core/os/HandlerKt$postDelayed$runnable$1\n+ 2 CasualModeGuide.kt\ncom/miui/gamebooster/guide/CasualModeGuide\n*L\n1#1,69:1\n136#2,4:70\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

.field final synthetic b:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$c;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    iput-object p2, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$c;->b:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$c;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/guide/CasualModeGuide;->a:Lcom/miui/gamebooster/guide/CasualModeGuide;

    iget-object v1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$c;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    iget-object v2, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$c;->b:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;

    invoke-virtual {v2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->getInGameAnim()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gamebooster/guide/CasualModeGuide;->g(Lcom/miui/gamebooster/guide/CasualModeGuide;Lcom/miui/gamebooster/guide/CasualModeGuide$a;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;I)V

    :cond_0
    return-void
.end method
