.class final Lcom/miui/securitycenter/SystemAdContentProvider$a;
.super Landroid/database/MatrixCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securitycenter/SystemAdContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/miui/securitycenter/SystemAdContentProvider$a;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/SystemAdContentProvider$a;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/SystemAdContentProvider$a;->a:Landroid/os/Bundle;

    return-object p1
.end method
