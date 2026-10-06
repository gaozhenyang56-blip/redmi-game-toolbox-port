.class Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field final synthetic c:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->c:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->b:Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->b:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Lcom/miui/powercenter/batteryhistory/d;

    invoke-direct {v0}, Lcom/miui/powercenter/batteryhistory/d;-><init>()V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->c:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v2, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->a:Lcom/miui/powercenter/batteryhistory/t;

    iput-object v2, v0, Lcom/miui/powercenter/batteryhistory/d;->k:Lcom/miui/powercenter/batteryhistory/t;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->c:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->c:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v2, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->c:Landroid/graphics/Path;

    iput-object v2, v0, Lcom/miui/powercenter/batteryhistory/d;->a:Landroid/graphics/Path;

    iget v2, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->k:I

    iput v2, v0, Lcom/miui/powercenter/batteryhistory/d;->b:I

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->d:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->c:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v2, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->d:Landroid/graphics/Path;

    iput-object v2, v0, Lcom/miui/powercenter/batteryhistory/d;->c:Landroid/graphics/Path;

    iget v2, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->l:I

    iput v2, v0, Lcom/miui/powercenter/batteryhistory/d;->d:I

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->e:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->c:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v2, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->e:Landroid/graphics/Path;

    iput-object v2, v0, Lcom/miui/powercenter/batteryhistory/d;->e:Landroid/graphics/Path;

    iget v2, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->m:I

    iput v2, v0, Lcom/miui/powercenter/batteryhistory/d;->f:I

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->f:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->c:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v2, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->f:Landroid/graphics/Path;

    iput-object v2, v0, Lcom/miui/powercenter/batteryhistory/d;->g:Landroid/graphics/Path;

    iget v2, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->n:I

    iput v2, v0, Lcom/miui/powercenter/batteryhistory/d;->h:I

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->g:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->c:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v2, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->g:Landroid/graphics/Path;

    iput-object v2, v0, Lcom/miui/powercenter/batteryhistory/d;->i:Landroid/graphics/Path;

    iget v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->o:I

    iput v1, v0, Lcom/miui/powercenter/batteryhistory/d;->j:I

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->a:Ljava/util/List;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->b:Z

    invoke-static {v0, v1, p1, v2}, Lcom/miui/powercenter/batteryhistory/e;->b(Lcom/miui/powercenter/batteryhistory/d;Ljava/util/List;IZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->c:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->a([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;->b(Ljava/lang/Void;)V

    return-void
.end method
