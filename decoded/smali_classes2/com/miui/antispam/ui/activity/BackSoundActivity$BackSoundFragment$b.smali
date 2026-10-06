.class Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->D0(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->b:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    iput p2, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;

    invoke-direct {p1, p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;-><init>(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;)V

    invoke-static {p1}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
