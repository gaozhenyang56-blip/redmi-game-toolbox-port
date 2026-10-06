.class Lcom/miui/antispam/ui/view/RecyclerViewExt$b$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/view/RecyclerViewExt$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/view/RecyclerViewExt$b;


# direct methods
.method private constructor <init>(Lcom/miui/antispam/ui/view/RecyclerViewExt$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b$a;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt$b;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antispam/ui/view/RecyclerViewExt$b;Lcom/miui/antispam/ui/view/RecyclerViewExt$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b$a;-><init>(Lcom/miui/antispam/ui/view/RecyclerViewExt$b;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b$a;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt$b;

    invoke-virtual {p1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->n()V

    return-void
.end method
