.class Lcom/miui/permcenter/permissions/acrossterminal/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/acrossterminal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/miui/permcenter/permissions/acrossterminal/b;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/accounts/Account;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    sput-object p1, Lcom/miui/permcenter/permissions/acrossterminal/b;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method
