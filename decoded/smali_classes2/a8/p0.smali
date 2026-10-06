.class public final synthetic La8/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/p0;->a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    iput-boolean p2, p0, La8/p0;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La8/p0;->a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    iget-boolean v1, p0, La8/p0;->b:Z

    invoke-static {v0, v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Z)V

    return-void
.end method
