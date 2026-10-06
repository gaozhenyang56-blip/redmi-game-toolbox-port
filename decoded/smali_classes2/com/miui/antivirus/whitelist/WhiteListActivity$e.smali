.class Lcom/miui/antivirus/whitelist/WhiteListActivity$e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/whitelist/WhiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:Lw4/e;

.field final synthetic b:Lcom/miui/antivirus/whitelist/WhiteListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Lw4/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$e;->b:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$e;->a:Lw4/e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Lw4/e;Lcom/miui/antivirus/whitelist/WhiteListActivity$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/whitelist/WhiteListActivity$e;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Lw4/e;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$e;->a:Lw4/e;

    const/16 v0, 0x3fe

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
