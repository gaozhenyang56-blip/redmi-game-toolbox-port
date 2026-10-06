.class Lcom/miui/antivirus/ui/MainHandleBar$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/ui/MainHandleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/ui/MainHandleBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/ui/MainHandleBar;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/ui/MainHandleBar;Lcom/miui/antivirus/ui/MainHandleBar$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/MainHandleBar$b;-><init>(Lcom/miui/antivirus/ui/MainHandleBar;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/ui/MainHandleBar;

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/miui/antivirus/ui/MainHandleBar;->a(Lcom/miui/antivirus/ui/MainHandleBar;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo2/b;->g(Landroid/content/Context;)Lo2/b;

    move-result-object p1

    invoke-virtual {p1}, Lo2/b;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/MainHandleBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Mi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/miui/antivirus/ui/MainHandleBar;->b(Lcom/miui/antivirus/ui/MainHandleBar;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/antivirus/ui/MainHandleBar;->b(Lcom/miui/antivirus/ui/MainHandleBar;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/antivirus/ui/MainHandleBar;->a(Lcom/miui/antivirus/ui/MainHandleBar;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f12178f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/ui/MainHandleBar$b;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/ui/MainHandleBar$b;->b(Ljava/lang/String;)V

    return-void
.end method
