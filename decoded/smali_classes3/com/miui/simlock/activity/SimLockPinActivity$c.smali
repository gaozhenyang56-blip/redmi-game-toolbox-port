.class Lcom/miui/simlock/activity/SimLockPinActivity$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/simlock/activity/SimLockPinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/simlock/activity/SimLockPinActivity;


# direct methods
.method private constructor <init>(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;Lcom/miui/simlock/activity/SimLockPinActivity$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/simlock/activity/SimLockPinActivity$c;-><init>(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->m0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->n0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->a:Ljava/lang/String;

    const-string v2, "1234"

    invoke-static {p1, v0, v2, v1}, Lcom/miui/simlock/c;->c(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Integer;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->q0(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->m0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {v2}, Lcom/miui/simlock/activity/SimLockPinActivity;->n0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result v2

    const/16 v3, 0xc

    invoke-static {p1, v0, v2, v1, v3}, Lcom/miui/simlock/c;->q(Landroid/content/Context;Ljava/lang/String;IZI)V

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/miui/simlock/activity/SimLockPinActivity;->t0(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->u0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10012b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1, v5}, Lcom/miui/simlock/activity/SimLockPinActivity;->s0(Lcom/miui/simlock/activity/SimLockPinActivity;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->z0(Lcom/miui/simlock/activity/SimLockPinActivity;I)I

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1, v1}, Lcom/miui/simlock/activity/SimLockPinActivity;->s0(Lcom/miui/simlock/activity/SimLockPinActivity;Z)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity$c;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity$c;->b(Ljava/lang/Integer;)V

    return-void
.end method
