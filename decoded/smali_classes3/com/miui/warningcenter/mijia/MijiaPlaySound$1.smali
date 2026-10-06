.class Lcom/miui/warningcenter/mijia/MijiaPlaySound$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/mijia/MijiaPlaySound;->playSound(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/mijia/MijiaPlaySound;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/mijia/MijiaPlaySound;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/MijiaPlaySound$1;->this$0:Lcom/miui/warningcenter/mijia/MijiaPlaySound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    iget-object p2, p0, Lcom/miui/warningcenter/mijia/MijiaPlaySound$1;->this$0:Lcom/miui/warningcenter/mijia/MijiaPlaySound;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    invoke-static {p2, p1}, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->access$002(Lcom/miui/warningcenter/mijia/MijiaPlaySound;I)I

    return-void
.end method
