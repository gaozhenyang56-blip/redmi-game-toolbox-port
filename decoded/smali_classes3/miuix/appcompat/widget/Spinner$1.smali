.class Lmiuix/appcompat/widget/Spinner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/Spinner;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/widget/Spinner;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/Spinner;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    iput-object p2, p0, Lmiuix/appcompat/widget/Spinner$1;->val$listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$1;->val$listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method
