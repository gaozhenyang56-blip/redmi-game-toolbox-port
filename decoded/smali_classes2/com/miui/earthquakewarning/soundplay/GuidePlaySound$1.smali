.class Lcom/miui/earthquakewarning/soundplay/GuidePlaySound$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->playSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound$1;->this$0:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound$1;->this$0:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    invoke-static {v0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->access$000(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound$1;->this$0:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    invoke-static {v0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->access$200(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound$1;->this$0:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    invoke-static {v1}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->access$100(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound$1;->this$0:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    invoke-static {v1}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->access$400(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound$1;->this$0:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    invoke-static {v3}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->access$000(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->access$302(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;I)I

    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound$1;->this$0:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    invoke-static {v1}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->access$000(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound$1;->this$0:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    invoke-static {v0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->access$200(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound$1;->this$0:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    invoke-static {v1}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->access$500(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound$1;->this$0:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    invoke-static {v0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->access$200(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x500

    :goto_0
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
