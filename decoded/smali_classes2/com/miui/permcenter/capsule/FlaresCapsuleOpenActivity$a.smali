.class Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity$a;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity$a;->a:Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 2

    const-string v0, "MIUISafety-Flares"

    const-string v1, "onDismissCancelled: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity$a;->a:Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public onDismissError()V
    .locals 2

    const-string v0, "MIUISafety-Flares"

    const-string v1, "onDismissError: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDismissSucceeded()V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity$a;->a:Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;

    invoke-static {v0}, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->f0(Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;)V

    return-void
.end method
