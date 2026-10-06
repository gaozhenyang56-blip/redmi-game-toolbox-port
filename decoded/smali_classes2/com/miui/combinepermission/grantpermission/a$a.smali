.class Lcom/miui/combinepermission/grantpermission/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/bottomsheet/i$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/combinepermission/grantpermission/a;->i()Lmiuix/bottomsheet/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/combinepermission/grantpermission/a;


# direct methods
.method constructor <init>(Lcom/miui/combinepermission/grantpermission/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/a$a;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a$a;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {v0}, Lcom/miui/combinepermission/grantpermission/a;->a(Lcom/miui/combinepermission/grantpermission/a;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/combinepermission/grantpermission/a;->b(Landroid/app/Activity;)V

    return-void
.end method
